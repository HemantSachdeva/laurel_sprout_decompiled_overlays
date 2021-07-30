.class final synthetic Laqv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Laqw;

.field private final b:Landroid/os/RemoteException;


# direct methods
.method public constructor <init>(Laqw;Landroid/os/RemoteException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqv;->a:Laqw;

    iput-object p2, p0, Laqv;->b:Landroid/os/RemoteException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Laqv;->a:Laqw;

    iget-object v1, p0, Laqv;->b:Landroid/os/RemoteException;

    iput-object v1, v0, Laqw;->c:Landroid/os/RemoteException;

    return-void
.end method
