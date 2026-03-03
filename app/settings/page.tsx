import { auth, signOut } from "@/auth";
import { Button } from "@/components/ui/button";

const SettingsPage = async () => {
  const session = await auth();

  return ( 
    <div className="bg-white p-10 rounded-xl">
      <div className="flex justify-between items-center mb-6">
         <h1 className="text-2xl font-bold">Dashboard</h1>
         <div className="text-sm">
            Logado como: <strong>{session?.user?.name}</strong> ({session?.user?.email})
         </div>
      </div>
      
      <form action={async () => {
        "use server";
        await signOut();
      }}>
        <Button type="submit" variant="destructive">
          Sair
        </Button>
      </form>
    </div>
   );
}
 
export default SettingsPage;
