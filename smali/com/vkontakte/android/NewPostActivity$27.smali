.class Lcom/vkontakte/android/NewPostActivity$27;
.super Ljava/lang/Object;
.source "NewPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/NewPostActivity;->showOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewPostActivity;

.field private final synthetic val$opts:[Z


# direct methods
.method constructor <init>(Lcom/vkontakte/android/NewPostActivity;[Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/NewPostActivity$27;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iput-object p2, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 720
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$27;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    aget-boolean v1, v1, v2

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->friendsOnly:Z

    .line 721
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$27;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    aget-boolean v1, v1, v3

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->exportToTwitter:Z

    .line 722
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$27;->this$0:Lcom/vkontakte/android/NewPostActivity;

    iget-object v1, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    aget-boolean v1, v1, v4

    iput-boolean v1, v0, Lcom/vkontakte/android/NewPostActivity;->exportToFacebook:Z

    .line 723
    iget-object v0, p0, Lcom/vkontakte/android/NewPostActivity$27;->this$0:Lcom/vkontakte/android/NewPostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/NewPostActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "export_twitter"

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    aget-boolean v2, v2, v3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "export_facebook"

    iget-object v2, p0, Lcom/vkontakte/android/NewPostActivity$27;->val$opts:[Z

    aget-boolean v2, v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 730
    return-void
.end method
