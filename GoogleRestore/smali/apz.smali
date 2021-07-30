.class final synthetic Lapz;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/BiConsumer;


# static fields
.field static final a:Lj$/util/function/BiConsumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapz;

    invoke-direct {v0}, Lapz;-><init>()V

    sput-object v0, Lapz;->a:Lj$/util/function/BiConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcsf;

    invoke-virtual {p1, p2}, Lcsf;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final andThen(Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$$CC;->andThen$$dflt$$(Lj$/util/function/BiConsumer;Lj$/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
