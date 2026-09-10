.class Lcom/vkontakte/android/WallActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/WallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/WallActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/WallActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    .line 61
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 64
    const-string v0, "com.vkontakte.android.NEW_POST_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    .line 66
    .local v6, "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/WallView;->prepend(Lcom/vkontakte/android/NewsEntry;)V

    .line 70
    .end local v6    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_0
    const-string v0, "com.vkontakte.android.POST_DELETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_1

    .line 72
    const-string v0, "post_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 73
    :cond_1
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 74
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/WallView;->remove(II)V

    .line 76
    :cond_2
    const-string v0, "com.vkontakte.android.POST_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget v2, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v2, :cond_3

    .line 78
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/vkontakte/android/cache/UserWallCache;->update(Landroid/content/Context;IIIIZ)V

    .line 79
    :cond_3
    const-string v0, "owner_id"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v2}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 80
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    const-string v2, "post_id"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "likes"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "comments"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "liked"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/vkontakte/android/WallView;->update(IIIIZ)V

    .line 82
    :cond_4
    const-string v0, "com.vkontakte.android.POST_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/NewsEntry;

    .line 84
    .restart local v6    # "post":Lcom/vkontakte/android/NewsEntry;
    iget v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_5

    .line 85
    iget v0, v6, Lcom/vkontakte/android/NewsEntry;->postID:I

    invoke-static {v0, p1}, Lcom/vkontakte/android/cache/UserWallCache;->remove(ILandroid/content/Context;)V

    .line 86
    invoke-static {v6, p1}, Lcom/vkontakte/android/cache/UserWallCache;->add(Lcom/vkontakte/android/NewsEntry;Landroid/content/Context;)V

    .line 88
    :cond_5
    iget v0, v6, Lcom/vkontakte/android/NewsEntry;->ownerID:I

    iget-object v1, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v1}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 89
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vkontakte/android/WallView;->replace(Lcom/vkontakte/android/NewsEntry;)V

    .line 92
    .end local v6    # "post":Lcom/vkontakte/android/NewsEntry;
    :cond_6
    const-string v0, "com.vkontakte.android.USER_PHOTO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$0(Lcom/vkontakte/android/WallActivity;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_8

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    invoke-static {v0}, Lcom/vkontakte/android/WallActivity;->access$1(Lcom/vkontakte/android/WallActivity;)Lcom/vkontakte/android/WallView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/WallActivity$1;->this$0:Lcom/vkontakte/android/WallActivity;

    const-string v2, "photo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkontakte/android/WallActivity;->userPhoto:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/WallView;->setUserPhoto(Ljava/lang/String;)V

    .line 97
    :cond_8
    return-void
.end method
