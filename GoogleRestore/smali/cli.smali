.class final synthetic Lcli;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lclk;

.field private final b:I

.field private final c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lclk;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcli;->a:Lclk;

    iput p2, p0, Lcli;->b:I

    iput-object p3, p0, Lcli;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcli;->a:Lclk;

    iget v1, p0, Lcli;->b:I

    iget-object v2, p0, Lcli;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lclk;->b(ILandroid/os/Bundle;)V

    return-void
.end method
