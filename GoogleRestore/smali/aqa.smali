.class final synthetic Laqa;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/BinaryOperator;


# static fields
.field static final a:Lj$/util/function/BinaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laqa;

    invoke-direct {v0}, Laqa;-><init>()V

    sput-object v0, Laqa;->a:Lj$/util/function/BinaryOperator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final andThen(Lj$/util/function/Function;)Lj$/util/function/BiFunction;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$$CC;->andThen$$dflt$$(Lj$/util/function/BiFunction;Lj$/util/function/Function;)Lj$/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcsf;

    check-cast p2, Lcsf;

    invoke-virtual {p2}, Lcsf;->a()Lcsi;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcsf;->a(Ljava/lang/Iterable;)V

    return-object p1
.end method
