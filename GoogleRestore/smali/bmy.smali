.class public final Lbmy;
.super Lbes;
.source "PG"


# static fields
.field private static final a:Lbeo;

.field private static final i:Lbej;

.field private static final j:Lbqb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v3, Lbej;

    invoke-direct {v3}, Lbej;-><init>()V

    sput-object v3, Lbmy;->i:Lbej;

    new-instance v2, Lbmt;

    invoke-direct {v2}, Lbmt;-><init>()V

    sput-object v2, Lbmy;->j:Lbqb;

    new-instance v6, Lbeo;

    .line 1
    const-string v1, "Romanesco.API"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbeo;-><init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V

    sput-object v6, Lbmy;->a:Lbeo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lbmy;->a:Lbeo;

    .line 2
    sget-object v1, Lber;->a:Lber;

    invoke-direct {p0, p1, v0, v1}, Lbes;-><init>(Landroid/content/Context;Lbeo;Lber;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbpi;
    .locals 1

    new-instance v0, Lbmv;

    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lbmv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbes;->b(Lbha;)Lbpi;

    move-result-object p1

    return-object p1
.end method
