.class Lcom/vkontakte/android/ProfileView$22$1;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfileView$22;->fail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ProfileView$22;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfileView$22;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfileView$22$1;->this$1:Lcom/vkontakte/android/ProfileView$22;

    iput-object p2, p0, Lcom/vkontakte/android/ProfileView$22$1;->val$msg:Ljava/lang/String;

    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ProfileView$22$1;)Lcom/vkontakte/android/ProfileView$22;
    .locals 1

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1;->this$1:Lcom/vkontakte/android/ProfileView$22;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1445
    new-instance v0, Lcom/vkontakte/android/api/AccountBanUser;

    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$22$1;->this$1:Lcom/vkontakte/android/ProfileView$22;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v1

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView;->access$1(Lcom/vkontakte/android/ProfileView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/AccountBanUser;-><init>(IZ)V

    .line 1446
    new-instance v1, Lcom/vkontakte/android/ProfileView$22$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/ProfileView$22$1;->val$msg:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ProfileView$22$1$1;-><init>(Lcom/vkontakte/android/ProfileView$22$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/AccountBanUser;->setCallback(Lcom/vkontakte/android/api/AccountBanUser$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v1

    .line 1460
    iget-object v0, p0, Lcom/vkontakte/android/ProfileView$22$1;->this$1:Lcom/vkontakte/android/ProfileView$22;

    invoke-static {v0}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 1461
    iget-object v1, p0, Lcom/vkontakte/android/ProfileView$22$1;->this$1:Lcom/vkontakte/android/ProfileView$22;

    invoke-static {v1}, Lcom/vkontakte/android/ProfileView$22;->access$0(Lcom/vkontakte/android/ProfileView$22;)Lcom/vkontakte/android/ProfileView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/view/View;)Lcom/vkontakte/android/APIRequest;

    .line 1462
    return-void
.end method
