.class public final Lehs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lehq;


# direct methods
.method private constructor <init>(Lehq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehs;->a:Lehq;

    return-void
.end method

.method public static a(Lehq;)Lehs;
    .locals 1

    new-instance v0, Lehs;

    .line 1
    invoke-direct {v0, p0}, Lehs;-><init>(Lehq;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lehs;->a:Lehq;

    .line 2
    invoke-static {v0}, Lehr;->a(Lehq;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lehs;->a:Lehq;

    .line 3
    invoke-static {v0, p1}, Lehr;->b(Lehq;Ljava/lang/Object;)V

    return-void
.end method
