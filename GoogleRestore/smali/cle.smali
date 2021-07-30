.class public final Lcle;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lclu;

.field public b:Lclu;

.field public c:Lclu;

.field public d:Lclu;

.field public e:Lclu;

.field public f:Lclu;

.field public g:Lclu;

.field public h:Lclu;

.field public i:Lclu;

.field public j:I

.field private final k:Lcma;


# direct methods
.method public constructor <init>(Lcma;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcle;->a:Lclu;

    iput-object v0, p0, Lcle;->b:Lclu;

    iput-object v0, p0, Lcle;->c:Lclu;

    iput-object v0, p0, Lcle;->d:Lclu;

    iput-object v0, p0, Lcle;->e:Lclu;

    iput-object v0, p0, Lcle;->f:Lclu;

    iput-object v0, p0, Lcle;->g:Lclu;

    iput-object v0, p0, Lcle;->h:Lclu;

    iput-object v0, p0, Lcle;->i:Lclu;

    iput-object p1, p0, Lcle;->k:Lcma;

    iget p1, p1, Lcma;->d:I

    iput p1, p0, Lcle;->j:I

    return-void
.end method


# virtual methods
.method public final a()Lclf;
    .locals 12

    new-instance v11, Lclf;

    iget v1, p0, Lcle;->j:I

    iget-object v2, p0, Lcle;->a:Lclu;

    iget-object v3, p0, Lcle;->b:Lclu;

    iget-object v4, p0, Lcle;->c:Lclu;

    iget-object v5, p0, Lcle;->d:Lclu;

    iget-object v6, p0, Lcle;->e:Lclu;

    iget-object v7, p0, Lcle;->f:Lclu;

    iget-object v8, p0, Lcle;->g:Lclu;

    iget-object v9, p0, Lcle;->h:Lclu;

    iget-object v10, p0, Lcle;->i:Lclu;

    .line 1
    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lclf;-><init>(ILclu;Lclu;Lclu;Lclu;Lclu;Lclu;Lclu;Lclu;Lclu;)V

    return-object v11
.end method
