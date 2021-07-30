.class final synthetic Lclj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lclk;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lclk;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lclj;->a:Lclk;

    iput-object p2, p0, Lclj;->b:Ljava/lang/String;

    iput-object p3, p0, Lclj;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lclj;->a:Lclk;

    iget-object v1, p0, Lclj;->b:Ljava/lang/String;

    iget-object v2, p0, Lclj;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lclk;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
