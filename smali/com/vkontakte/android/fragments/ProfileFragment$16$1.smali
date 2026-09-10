.class Lcom/vkontakte/android/fragments/ProfileFragment$16$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ProfileFragment$16;->success(Lcom/vkontakte/android/api/ExtendedUserProfile;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/ProfileFragment$16;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ProfileFragment$16;)V
    .locals 0

    .prologue
    .line 765
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ProfileFragment$16$1;->this$1:Lcom/vkontakte/android/fragments/ProfileFragment$16;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/ProfileFragment$16;->this$0:Lcom/vkontakte/android/fragments/ProfileFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 769
    return-void
.end method
