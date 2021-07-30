.class final synthetic Laky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lalb;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lalb;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laky;->a:Lalb;

    iput-object p2, p0, Laky;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Laky;->a:Lalb;

    iget-object p2, p0, Laky;->b:Landroid/os/Bundle;

    const-string v0, "should_quit_flow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1}, Lalb;->P()Lala;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lala;->g()V

    return-void

    :cond_0
    invoke-interface {p1}, Lala;->f()V

    return-void
.end method
