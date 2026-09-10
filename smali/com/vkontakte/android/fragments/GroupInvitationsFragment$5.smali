.class Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;
.super Ljava/lang/Object;
.source "GroupInvitationsFragment.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsJoin$Callback;


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

.field private final synthetic val$gid:I

.field private final synthetic val$req:Lcom/vkontakte/android/api/GroupInvitation;

.field private final synthetic val$unsure:Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/GroupInvitationsFragment;Lcom/vkontakte/android/api/GroupInvitation;IZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$req:Lcom/vkontakte/android/api/GroupInvitation;

    iput p3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$gid:I

    iput-boolean p4, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$unsure:Z

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 4
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v0, "args":Lorg/json/JSONObject;
    const-string v1, "group_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$gid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-boolean v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$unsure:Z

    if-eqz v1, :cond_0

    const-string v1, "not_sure"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_0
    const-string v1, "groups.join"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/vkontakte/android/cache/Cache;->putApiRequest(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/reflect/Method;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "args":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public success()V
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->val$req:Lcom/vkontakte/android/api/GroupInvitation;

    iget-object v0, v0, Lcom/vkontakte/android/api/GroupInvitation;->group:Lcom/vkontakte/android/api/Group;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/GroupInvitationsFragment$5;->this$0:Lcom/vkontakte/android/fragments/GroupInvitationsFragment;

    invoke-virtual {v1}, Lcom/vkontakte/android/fragments/GroupInvitationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/cache/GroupsCache;->add(Lcom/vkontakte/android/api/Group;Landroid/content/Context;)V

    .line 193
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.GROUP_INVITES_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.GROUP_LIST_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    sget v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/vkontakte/android/LongPollService;->numGroupInvitations:I

    .line 196
    sget-object v0, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkontakte.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
