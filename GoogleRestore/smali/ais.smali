.class final synthetic Lais;
.super Ljava/lang/Object;

# interfaces
.implements Lw;


# instance fields
.field private final a:Lajb;

.field private final b:Lcom/google/android/setupdesign/GlifRecyclerLayout;


# direct methods
.method public constructor <init>(Lajb;Lcom/google/android/setupdesign/GlifRecyclerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lais;->a:Lajb;

    iput-object p2, p0, Lais;->b:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lais;->a:Lajb;

    iget-object v1, p0, Lais;->b:Lcom/google/android/setupdesign/GlifRecyclerLayout;

    check-cast p1, Lcsi;

    sget-object v2, Lagd;->a:Lagd;

    invoke-static {p1}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lait;

    invoke-direct {v3, v2}, Lait;-><init>(Lagd;)V

    invoke-interface {p1, v3}, Lj$/util/stream/Stream;->map(Lj$/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v2, Laiu;->a:Lj$/util/function/Predicate;

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Laqc;->a()Lj$/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcsi;

    invoke-virtual {v0, v1, p1}, Lajb;->a(Lcom/google/android/setupdesign/GlifRecyclerLayout;Lcsi;)V

    return-void
.end method
