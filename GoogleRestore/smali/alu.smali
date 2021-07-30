.class public final Lalu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lalv;

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Landroid/view/ViewGroup;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Lcma;

.field public h:Lcma;


# direct methods
.method public constructor <init>(Lalv;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const v0, 0x7f08025a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lalu;->d:Ljava/lang/Integer;

    iput-object p1, p0, Lalu;->a:Lalv;

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lalu;->b:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lalu;->c:Landroid/view/ViewGroup;

    return-void
.end method
