.class public Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lk;


# instance fields
.field private final a:[Lf;


# direct methods
.method public constructor <init>([Lf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lf;

    return-void
.end method


# virtual methods
.method public final a(Ll;Lh;)V
    .locals 3

    new-instance p1, Ley;

    .line 1
    invoke-direct {p1}, Ley;-><init>()V

    iget-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lf;

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 2
    aget-object v2, p1, v1

    .line 3
    invoke-interface {v2}, Lf;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;->a:[Lf;

    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 4
    aget-object v1, p1, v0

    .line 5
    invoke-interface {v1}, Lf;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
