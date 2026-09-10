.class Lcom/vkontakte/android/ProfileView$22$1$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/AccountBanUser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView$22$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/ProfileView$22$1;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView$22$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->this$2:Lcom/vkontakte/android/ProfileView$22$1;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->val$msg:Ljava/lang/String;

    .line 1446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->this$2:Lcom/vkontakte/android/ProfileView$22$1;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22$1;->access$0(Lcom/vkontakte/android/ProfileView$22$1;)Lcom/vkontakte/android/ProfileView$22;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f08006b

    :goto_0
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1458
    return-void

    .line 1457
    :cond_0
    const v0, 0x7f080068

    goto :goto_0
.end method

.method public success()V
    .locals 2

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->this$2:Lcom/vkontakte/android/ProfileView$22$1;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22$1;->access$0(Lcom/vkontakte/android/ProfileView$22$1;)Lcom/vkontakte/android/ProfileView$22;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->blacklisted:Z

    .line 1450
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->this$2:Lcom/vkontakte/android/ProfileView$22$1;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22$1;->access$0(Lcom/vkontakte/android/ProfileView$22$1;)Lcom/vkontakte/android/ProfileView$22;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 1452
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->this$2:Lcom/vkontakte/android/ProfileView$22$1;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22$1;->access$0(Lcom/vkontakte/android/ProfileView$22$1;)Lcom/vkontakte/android/ProfileView$22;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$22$1$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ProfileView;->access$6(Lcom/vkontakte/android/ProfileView;Ljava/lang/String;)V

    .line 1453
    return-void
.end method
