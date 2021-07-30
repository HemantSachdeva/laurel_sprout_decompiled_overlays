.class final Lckg;
.super Lcgq;
.source "PG"


# instance fields
.field final synthetic a:Lckk;


# direct methods
.method public constructor <init>(Lckk;)V
    .locals 0

    iput-object p1, p0, Lckg;->a:Lckk;

    invoke-direct {p0}, Lcgq;-><init>()V

    return-void
.end method


# virtual methods
.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lckg;->a:Lckk;

    iget-object p2, p1, Lckk;->m:Lcom/google/android/material/internal/CheckableImageButton;

    .line 1
    invoke-virtual {p1}, Lckk;->c()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
