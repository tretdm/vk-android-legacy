.class Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;
.super Ljava/lang/Object;
.source "NewsSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/NewsSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRunner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;Lcom/vkontakte/android/fragments/NewsSearchFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/fragments/NewsSearchFragment;
    .param p2, "x1"    # Lcom/vkontakte/android/fragments/NewsSearchFragment$1;

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;-><init>(Lcom/vkontakte/android/fragments/NewsSearchFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->access$102(Lcom/vkontakte/android/fragments/NewsSearchFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 235
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->access$000(Lcom/vkontakte/android/fragments/NewsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->access$000(Lcom/vkontakte/android/fragments/NewsSearchFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsSearchFragment$SearchRunner;->this$0:Lcom/vkontakte/android/fragments/NewsSearchFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/NewsSearchFragment;->reload()V

    goto :goto_0
.end method
