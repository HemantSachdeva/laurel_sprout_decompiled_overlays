.class final Lcjv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcjz;


# direct methods
.method public constructor <init>(Lcjz;)V
    .locals 0

    iput-object p1, p0, Lcjv;->a:Lcjz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcjv;->a:Lcjz;

    iget-object v0, p1, Lcjz;->k:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->a:Landroid/widget/EditText;

    .line 1
    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 2
    invoke-virtual {p1, v0}, Lcjz;->a(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method
