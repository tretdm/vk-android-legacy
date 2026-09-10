.class Lcom/vkontakte/android/ProfileView$11;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView;-><init>(Landroid/content/Context;ILcom/vkontakte/android/fragments/ProfileFragment;)V
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
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v0

    sget v1, Lcom/vkontakte/android/Global;->uid:I

    if-ne v0, v1, :cond_2

    .line 374
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$18(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/fragments/ProfileFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$18(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/fragments/ProfileFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView;->access$0(Lcom/vkontakte/android/ProfileView;)Lcom/vkontakte/android/api/ExtendedUserProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/vkontakte/android/api/ExtendedUserProfile;->bigPhoto:Ljava/lang/String;

    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->showUpdatePhotoDlg(Z)V

    .line 380
    :cond_0
    :goto_1
    return-void

    .line 375
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$11;->this$0:Lcom/vkontakte/android/ProfileView;

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->openProfilePhotos()V

    goto :goto_1
.end method
