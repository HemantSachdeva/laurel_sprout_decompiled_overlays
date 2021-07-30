.class public final Ldsw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const/4 v0, 0x1

    invoke-static {v0}, Ldqg;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldsw;->a:Ljava/util/List;

    .line 2
    const/16 v0, 0xa

    invoke-static {v0}, Ldqg;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldsw;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Leip;)V
    .locals 1

    iget-object v0, p0, Ldsw;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
