.class Lcom/vkontakte/android/BlacklistActivity$2;
.super Ljava/lang/Object;
.source "BlacklistActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountBanUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/BlacklistActivity;->unban(Lcom/vkontakte/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/BlacklistActivity;

.field private final synthetic val$user:Lcom/vkontakte/android/UserProfile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/BlacklistActivity;Lcom/vkontakte/android/UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/BlacklistActivity$2;->this$0:Lcom/vkontakte/android/BlacklistActivity;

    iput-object p2, p0, Lcom/vkontakte/android/BlacklistActivity$2;->val$user:Lcom/vkontakte/android/UserProfile;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/vkontakte/android/BlacklistActivity$2;->this$0:Lcom/vkontakte/android/BlacklistActivity;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f060051

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    return-void

    .line 58
    :cond_0
    const v0, 0x7f06004e

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vkontakte/android/BlacklistActivity$2;->this$0:Lcom/vkontakte/android/BlacklistActivity;

    invoke-static {v0}, Lcom/vkontakte/android/BlacklistActivity;->access$1(Lcom/vkontakte/android/BlacklistActivity;)Lcom/vkontakte/android/EditableUserListView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/BlacklistActivity$2;->val$user:Lcom/vkontakte/android/UserProfile;

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/EditableUserListView;->removeUser(Lcom/vkontakte/android/UserProfile;)V

    .line 54
    return-void
.end method
