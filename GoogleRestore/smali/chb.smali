.class public final Lchb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/graphics/Typeface;

.field private b:Z

.field private final c:Lcgi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcgi;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lchb;->a:Landroid/graphics/Typeface;

    iput-object p1, p0, Lchb;->c:Lcgi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lchb;->b:Z

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-boolean v0, p0, Lchb;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lchb;->c:Lcgi;

    iget-object v0, v0, Lcgi;->a:Lcgj;

    .line 2
    invoke-virtual {v0, p1}, Lcgj;->a(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcgj;->e()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lchb;->a:Landroid/graphics/Typeface;

    .line 1
    invoke-virtual {p0, v0}, Lchb;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
