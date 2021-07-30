.class public final synthetic Lcom/android/dynsystem/-$$Lambda$DynamicSystemInstallationService$wk802_1cWGTaqnS3-zJlFjcZNYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/dynsystem/DynamicSystemInstallationService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/dynsystem/DynamicSystemInstallationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dynsystem/-$$Lambda$DynamicSystemInstallationService$wk802_1cWGTaqnS3-zJlFjcZNYA;->f$0:Lcom/android/dynsystem/DynamicSystemInstallationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/dynsystem/-$$Lambda$DynamicSystemInstallationService$wk802_1cWGTaqnS3-zJlFjcZNYA;->f$0:Lcom/android/dynsystem/DynamicSystemInstallationService;

    invoke-virtual {v0}, Lcom/android/dynsystem/DynamicSystemInstallationService;->lambda$resetTaskAndStop$0$DynamicSystemInstallationService()V

    return-void
.end method
