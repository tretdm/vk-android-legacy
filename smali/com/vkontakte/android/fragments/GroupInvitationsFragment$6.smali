.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsLeave$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

.field final synthetic val$gid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;I)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;->val$gid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 233
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v0, "args":Lorg/json/JSONObject;
    const-string v1, "group_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$6;->val$gid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v1, "groups.leave"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 226
    sget v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 227
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    return-void
.end method
