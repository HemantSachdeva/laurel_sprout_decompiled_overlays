.class final synthetic Lanv;
.super Ljava/lang/Object;

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Lany;


# direct methods
.method public constructor <init>(Lany;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanv;->a:Lany;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lanv;->a:Lany;

    iget-object v1, v0, Lany;->b:Laoh;

    iget-object v0, v0, Lany;->c:Ljava/lang/String;

    invoke-static {v0}, Lany;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, v1, Laoh;->b:Lacw;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Resuming app updates"

    invoke-virtual {v2, v4, v3}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Laoh;->a()Lczu;

    move-result-object v2

    new-instance v3, Laob;

    invoke-direct {v3, v1, v0}, Laob;-><init>(Laoh;Landroid/os/Bundle;)V

    iget-object v0, v1, Laoh;->d:Lczw;

    invoke-static {v2, v3, v0}, Lcyt;->a(Lczu;Lczd;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object v0

    return-object v0
.end method
