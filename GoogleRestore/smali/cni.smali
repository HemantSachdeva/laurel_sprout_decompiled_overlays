.class public final Lcni;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final a:Lcnm;


# direct methods
.method public constructor <init>(Lcnm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcni;->a:Lcnm;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    iget-object p1, p0, Lcni;->a:Lcnm;

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p1, p2}, Lcnm;->a(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcni;->a:Lcnm;

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Lcnm;->a(Z)V

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
