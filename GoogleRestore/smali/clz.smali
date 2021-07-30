.class public final Lclz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/view/View$OnClickListener;

.field public c:I

.field public d:I

.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lclz;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lclz;->b:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput v0, p0, Lclz;->c:I

    iput v0, p0, Lclz;->d:I

    iput-object p1, p0, Lclz;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcma;
    .locals 5

    new-instance v0, Lcma;

    iget-object v1, p0, Lclz;->a:Ljava/lang/String;

    iget-object v2, p0, Lclz;->b:Landroid/view/View$OnClickListener;

    iget v3, p0, Lclz;->c:I

    iget v4, p0, Lclz;->d:I

    .line 1
    invoke-direct {v0, v1, v2, v3, v4}, Lcma;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;II)V

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lclz;->e:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lclz;->a:Ljava/lang/String;

    return-void
.end method
