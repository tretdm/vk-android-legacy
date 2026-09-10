.class Lcom/vkontakte/android/PhotoListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoListActivity$1;->this$0:Lcom/vkontakte/android/PhotoListActivity;

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string v1, "aid"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoListActivity$1;->this$0:Lcom/vkontakte/android/PhotoListActivity;

    invoke-virtual {v2}, Lcom/vkontakte/android/PhotoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "aid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 36
    const-string v1, "photo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Photo;

    .line 37
    .local v0, "ph":Lcom/vkontakte/android/Photo;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoListActivity$1;->this$0:Lcom/vkontakte/android/PhotoListActivity;

    invoke-static {v1}, Lcom/vkontakte/android/PhotoListActivity;->access$0(Lcom/vkontakte/android/PhotoListActivity;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/PhotoListView;->appendList(Lcom/vkontakte/android/Photo;)V

    .line 39
    .end local v0    # "ph":Lcom/vkontakte/android/Photo;
    :cond_0
    return-void
.end method
