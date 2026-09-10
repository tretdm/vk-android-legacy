.class Lcom/vkontakte/android/ProfileView$27;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/vkontakte/android/api/GroupsLeave$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;->doLeaveGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfileView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$27;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 1565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 3
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 1575
    new-instance v0, Lcom/vkontakte/android/VKAlertDialog$Builder;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$27;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v1}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1576
    const v1, 0x7f080068

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1577
    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1578
    const v1, 0x7f080042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1579
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1580
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$27;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->friendStatus:I

    .line 1570
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$27;->this$0:Lcom/vkontakte/android/ProfileView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ProfileView;->loadInitial(Z)V

    .line 1571
    return-void
.end method
