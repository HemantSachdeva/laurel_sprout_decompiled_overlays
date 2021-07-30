.class public Landroid/arch/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field private final a:Le;

.field private final b:Lk;


# direct methods
.method public constructor <init>(Le;Lk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    iput-object p2, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->b:Lk;

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 1

    .line 1
    sget-object v0, Lh;->a:Lh;

    invoke-virtual {p2}, Lh;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_1
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 3
    invoke-interface {v0}, Le;->b()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 4
    invoke-interface {v0}, Le;->f()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 5
    invoke-interface {v0}, Le;->c()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 6
    invoke-interface {v0}, Le;->d()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 7
    invoke-interface {v0}, Le;->e()V

    goto :goto_0

    .line 2
    :pswitch_6
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->a:Le;

    .line 8
    invoke-interface {v0}, Le;->a()V

    .line 1
    :goto_0
    iget-object v0, p0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;->b:Lk;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2}, Lk;->a(Ll;Lh;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
