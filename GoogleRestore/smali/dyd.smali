.class public final Ldyd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ldvb;

.field public c:Ldya;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldyd;->a:Ljava/util/List;

    .line 2
    sget-object v0, Ldvb;->b:Ldvb;

    iput-object v0, p0, Ldyd;->b:Ldvb;

    return-void
.end method


# virtual methods
.method public final a()Ldye;
    .locals 4

    new-instance v0, Ldye;

    iget-object v1, p0, Ldyd;->a:Ljava/util/List;

    iget-object v2, p0, Ldyd;->b:Ldvb;

    iget-object v3, p0, Ldyd;->c:Ldya;

    .line 3
    invoke-direct {v0, v1, v2, v3}, Ldye;-><init>(Ljava/util/List;Ldvb;Ldya;)V

    return-object v0
.end method
