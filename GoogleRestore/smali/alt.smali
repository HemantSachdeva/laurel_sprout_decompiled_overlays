.class final synthetic Lalt;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Consumer;


# static fields
.field static final a:Lj$/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lalt;

    invoke-direct {v0}, Lalt;-><init>()V

    sput-object v0, Lalt;->a:Lj$/util/function/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$$CC;->andThen$$dflt$$(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
