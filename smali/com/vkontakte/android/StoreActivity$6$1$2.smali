.class Lcom/vkontakte/android/StoreActivity$6$1$2;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/StoreActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/StoreActivity$6$1;

.field private final synthetic val$x:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$6$1;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    iput-object p2, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->val$x:Ljava/lang/Exception;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x12c

    .line 338
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->val$x:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/ui/ErrorView;->setErrorInfo(ILjava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$8(Lcom/vkontakte/android/StoreActivity;)Lcom/vkontakte/android/ui/ErrorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 340
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$2;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$7(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 341
    return-void
.end method
