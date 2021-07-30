.class final synthetic Lbsa;
.super Ljava/lang/Object;

# interfaces
.implements Lbsd;


# static fields
.field static final a:Lbsd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbsa;

    invoke-direct {v0}, Lbsa;-><init>()V

    sput-object v0, Lbsa;->a:Lbsd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbrb;)V
    .locals 0

    invoke-virtual {p1}, Lbrb;->b()V

    return-void
.end method
