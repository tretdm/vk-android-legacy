.class Lcom/vkontakte/android/FragmentWrapperActivity$2;
.super Ljava/lang/Object;
.source "FragmentWrapperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/FragmentWrapperActivity;->setTitleMarquee()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FragmentWrapperActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/FragmentWrapperActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_title"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, "btnId":I
    if-nez v0, :cond_0

    const v0, 0x7f080022

    .line 241
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$1(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V

    .line 242
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar_subtitle"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 243
    if-nez v0, :cond_2

    const v0, 0x7f080023

    .line 244
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    iget-object v1, p0, Lcom/vkontakte/android/FragmentWrapperActivity$2;->this$0:Lcom/vkontakte/android/FragmentWrapperActivity;

    invoke-virtual {v1, v0}, Lcom/vkontakte/android/FragmentWrapperActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/vkontakte/android/FragmentWrapperActivity;->access$1(Lcom/vkontakte/android/FragmentWrapperActivity;Landroid/widget/TextView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v0    # "btnId":I
    :cond_3
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    goto :goto_0
.end method
