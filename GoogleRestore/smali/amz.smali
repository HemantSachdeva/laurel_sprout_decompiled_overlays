.class public final synthetic Lamz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamz;->a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lamz;->a:Lcom/google/android/apps/pixelmigrate/component/RestoreChoiceActivity;

    new-instance v1, Lamb;

    invoke-direct {v1}, Lamb;-><init>()V

    invoke-virtual {v0, v1}, Lamo;->b(Lba;)V

    return-void
.end method
