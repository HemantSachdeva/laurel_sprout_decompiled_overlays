.class final synthetic Lapy;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# static fields
.field static final a:Lj$/util/function/Supplier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapy;

    invoke-direct {v0}, Lapy;-><init>()V

    sput-object v0, Lapy;->a:Lj$/util/function/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcsi;->h()Lcsf;

    move-result-object v0

    return-object v0
.end method
