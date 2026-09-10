.class Lcom/vkontakte/android/fragments/NotificationsFragment$4;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/NotificationsGet$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NotificationsFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

.field final synthetic val$count:I

.field final synthetic val$fromCache:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NotificationsFragment;IZ)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->val$count:I

    iput-boolean p3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->val$fromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$002(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 176
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v0, p1, p2}, Lcom/vkontakte/android/fragments/NotificationsFragment;->onError(ILjava/lang/String;)V

    .line 177
    return-void
.end method

.method public success(Ljava/util/List;IILjava/lang/String;)V
    .locals 4
    .param p2, "total"    # I
    .param p3, "newOffset"    # I
    .param p4, "newFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/api/NotificationEntry;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "n":Ljava/util/List;, "Ljava/util/List<Lcom/vkontakte/android/api/NotificationEntry;>;"
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$002(Lcom/vkontakte/android/fragments/NotificationsFragment;Lcom/vkontakte/android/APIRequest;)Lcom/vkontakte/android/APIRequest;

    .line 161
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-static {v2}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$100(Lcom/vkontakte/android/fragments/NotificationsFragment;)I

    move-result v2

    iget v3, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->val$count:I

    add-int/2addr v2, v3

    if-ge v2, p2, :cond_1

    const/4 v0, 0x1

    .line 162
    .local v0, "more":Z
    :goto_0
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-static {v2, p3}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$102(Lcom/vkontakte/android/fragments/NotificationsFragment;I)I

    .line 163
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-static {v2, p4}, Lcom/vkontakte/android/fragments/NotificationsFragment;->access$202(Lcom/vkontakte/android/fragments/NotificationsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 164
    iget-object v2, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v2, p1, v0}, Lcom/vkontakte/android/fragments/NotificationsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 166
    sput v1, Lcom/vkontakte/android/LongPollService;->numNotifications:I

    .line 167
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->val$fromCache:Z

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/vkontakte/android/fragments/NotificationsFragment$4;->this$0:Lcom/vkontakte/android/fragments/NotificationsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/NotificationsFragment;->refresh()V

    .line 171
    :cond_0
    return-void

    .end local v0    # "more":Z
    :cond_1
    move v0, v1

    .line 161
    goto :goto_0
.end method
