.class Lcom/vkontakte/android/StoreActivity$6$1$1;
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


# direct methods
.method constructor <init>(Lcom/vkontakte/android/StoreActivity$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 326
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$2(Lcom/vkontakte/android/StoreActivity;)V

    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$3(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 328
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6$1;->access$0(Lcom/vkontakte/android/StoreActivity$6$1;)Lcom/vkontakte/android/StoreActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity$6;->access$0(Lcom/vkontakte/android/StoreActivity$6;)Lcom/vkontakte/android/StoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$7(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 329
    return-void
.end method
