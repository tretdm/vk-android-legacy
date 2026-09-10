.class Lcom/vkontakte/android/PhotoListView$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListView$1;->this$0:Lcom/vkontakte/android/PhotoListView;

    .line 62
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 65
    const-string v2, "com.vkontakte.android.PHOTO_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "index"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    .local v1, "idx":I
    const-string v2, "aid"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, "aid":I
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$1;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$0(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$1;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$1(Lcom/vkontakte/android/PhotoListView;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const-string v2, "fave"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-ltz v1, :cond_1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$1;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$2(Lcom/vkontakte/android/PhotoListView;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoListView$1;->this$0:Lcom/vkontakte/android/PhotoListView;

    invoke-static {v2}, Lcom/vkontakte/android/PhotoListView;->access$3(Lcom/vkontakte/android/PhotoListView;)V

    .line 75
    .end local v0    # "aid":I
    .end local v1    # "idx":I
    :cond_1
    return-void

    .line 71
    .restart local v0    # "aid":I
    .restart local v1    # "idx":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method
