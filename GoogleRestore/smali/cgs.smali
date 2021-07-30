.class public final Lcgs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfu;


# instance fields
.field final synthetic a:Lcgu;

.field final synthetic b:Lcdp;


# direct methods
.method public constructor <init>(Lcdp;Lcgu;)V
    .locals 0

    iput-object p1, p0, Lcgs;->b:Lcdp;

    iput-object p2, p0, Lcgs;->a:Lcgu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgu;)Lgu;
    .locals 2

    iget-object p1, p0, Lcgs;->b:Lcdp;

    new-instance v0, Lcgu;

    iget-object v1, p0, Lcgs;->a:Lcgu;

    .line 1
    invoke-direct {v0, v1}, Lcgu;-><init>(Lcgu;)V

    iget-object v0, p1, Lcdp;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    invoke-virtual {p2}, Lgu;->i()Ldz;

    move-result-object v1

    iget v1, v1, Ldz;->e:I

    iput v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:I

    iget-object p1, p1, Lcdp;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c()V

    return-object p2
.end method
