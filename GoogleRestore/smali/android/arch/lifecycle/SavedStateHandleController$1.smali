.class Landroid/arch/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field final synthetic a:Lj;

.field final synthetic b:Lwy;


# direct methods
.method public constructor <init>(Lj;Lwy;)V
    .locals 0

    iput-object p1, p0, Landroid/arch/lifecycle/SavedStateHandleController$1;->a:Lj;

    iput-object p2, p0, Landroid/arch/lifecycle/SavedStateHandleController$1;->b:Lwy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 0

    .line 1
    sget-object p1, Lh;->b:Lh;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroid/arch/lifecycle/SavedStateHandleController$1;->a:Lj;

    .line 2
    invoke-virtual {p1, p0}, Lj;->b(Lvx;)V

    iget-object p1, p0, Landroid/arch/lifecycle/SavedStateHandleController$1;->b:Lwy;

    const-class p2, Laa;

    .line 3
    invoke-virtual {p1, p2}, Lwy;->a(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
