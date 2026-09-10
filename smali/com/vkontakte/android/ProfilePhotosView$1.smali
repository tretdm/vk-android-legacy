.class Lcom/vkontakte/android/ProfilePhotosView$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfilePhotosView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfilePhotosView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfilePhotosView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfilePhotosView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfilePhotosView$1;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 36
    const-string v3, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ONRECEIVE "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v3, Lcom/vkontakte/android/ProfilePhotosView;->ACTION_ADD_PHOTOS:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "uid"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/vkontakte/android/ProfilePhotosView$1;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v5}, Lcom/vkontakte/android/ProfilePhotosView;->access$0(Lcom/vkontakte/android/ProfilePhotosView;)I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 38
    const-string v3, "photos"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 39
    .local v0, "p":[Landroid/os/Parcelable;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 40
    .local v2, "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    array-length v5, v0

    move v3, v4

    :goto_0
    if-lt v3, v5, :cond_2

    .line 42
    const-string v3, "list_type"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/vkontakte/android/ProfilePhotosView$1;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/vkontakte/android/PhotoListView;->appendList(Ljava/util/Vector;I)V

    .line 43
    :cond_0
    const-string v3, "list_type"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/ProfilePhotosView$1;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v3}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Lcom/vkontakte/android/PhotoListView;->appendList(Ljava/util/Vector;I)V

    .line 45
    .end local v0    # "p":[Landroid/os/Parcelable;
    .end local v2    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_1
    return-void

    .line 40
    .restart local v0    # "p":[Landroid/os/Parcelable;
    .restart local v2    # "photos":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/vkontakte/android/Photo;>;"
    :cond_2
    aget-object v1, v0, v3

    .local v1, "ph":Landroid/os/Parcelable;
    check-cast v1, Lcom/vkontakte/android/Photo;

    .end local v1    # "ph":Landroid/os/Parcelable;
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
