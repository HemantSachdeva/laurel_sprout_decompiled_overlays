.class public final Lki;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lps;

.field public final b:Lkp;

.field public final c:I


# direct methods
.method public constructor <init>(Lps;Lkp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lki;->a:Lps;

    iput-object p2, p0, Lki;->b:Lkp;

    iput p3, p0, Lki;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lki;->a:Lps;

    iget-object v0, v0, Lpp;->e:Lok;

    return-object v0
.end method
