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
    .line 321
    iput-object p1, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x12c

    .line 323
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$200(Lcom/vkontakte/android/StoreActivity;)V

    .line 324
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$300(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 325
    iget-object v0, p0, Lcom/vkontakte/android/StoreActivity$6$1$1;->this$2:Lcom/vkontakte/android/StoreActivity$6$1;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6$1;->this$1:Lcom/vkontakte/android/StoreActivity$6;

    iget-object v0, v0, Lcom/vkontakte/android/StoreActivity$6;->this$0:Lcom/vkontakte/android/StoreActivity;

    invoke-static {v0}, Lcom/vkontakte/android/StoreActivity;->access$500(Lcom/vkontakte/android/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vkontakte/android/Global;->showViewAnimated(Landroid/view/View;ZI)V

    .line 326
    return-void
.end method
