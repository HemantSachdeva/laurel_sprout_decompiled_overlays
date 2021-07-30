.class public final Labo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Laar;

.field public final c:Labr;

.field public d:Z


# direct methods
.method private constructor <init>(Labr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labo;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labo;->a:Ljava/lang/Object;

    iput-object v0, p0, Labo;->b:Laar;

    iput-object p1, p0, Labo;->c:Labr;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Laar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Labo;->d:Z

    iput-object p1, p0, Labo;->a:Ljava/lang/Object;

    iput-object p2, p0, Labo;->b:Laar;

    const/4 p1, 0x0

    iput-object p1, p0, Labo;->c:Labr;

    return-void
.end method

.method public static a(Labr;)Labo;
    .locals 1

    new-instance v0, Labo;

    .line 1
    invoke-direct {v0, p0}, Labo;-><init>(Labr;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Labo;->c:Labr;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
