.class public Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;
.implements Lsf;


# instance fields
.field final synthetic a:Lsl;

.field private final b:Lj;

.field private final c:Lsj;

.field private d:Lsf;


# direct methods
.method public constructor <init>(Lsl;Lj;Lsj;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lj;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lsj;

    .line 1
    invoke-virtual {p2, p0}, Lj;->a(Lvx;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:Lj;

    .line 2
    invoke-virtual {v0, p0}, Lj;->b(Lvx;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lsj;

    .line 3
    invoke-virtual {v0, p0}, Lsj;->b(Lsf;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lsf;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lsf;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lsf;

    :cond_0
    return-void
.end method

.method public final a(Ll;Lh;)V
    .locals 1

    .line 5
    sget-object p1, Lh;->b:Lh;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Lsl;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:Lsj;

    iget-object v0, p1, Lsl;->a:Ljava/util/ArrayDeque;

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    new-instance v0, Lsk;

    .line 7
    invoke-direct {v0, p1, p2}, Lsk;-><init>(Lsl;Lsj;)V

    .line 8
    invoke-virtual {p2, v0}, Lsj;->a(Lsf;)V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lsf;

    return-void

    :cond_0
    sget-object p1, Lh;->e:Lh;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Lsf;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lsf;->a()V

    return-void

    :cond_1
    sget-object p1, Lh;->f:Lh;

    if-ne p2, p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a()V

    return-void

    .line 9
    :cond_2
    return-void
.end method
