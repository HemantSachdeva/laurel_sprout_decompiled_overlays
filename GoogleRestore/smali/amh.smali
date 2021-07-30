.class final synthetic Lamh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lami;


# direct methods
.method public constructor <init>(Lami;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamh;->a:Lami;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lamh;->a:Lami;

    invoke-virtual {p1}, Lami;->e()Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;->setResult(I)V

    invoke-virtual {p1}, Lcom/google/android/apps/pixelmigrate/common/component/WorkProfileSetupActivity;->finish()V

    return-void
.end method
