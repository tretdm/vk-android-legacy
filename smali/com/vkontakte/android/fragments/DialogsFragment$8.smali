.class Lcom/vkontakte/android/fragments/DialogsFragment$8;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$900(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/SearchView;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v2}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-virtual {v3}, Lcom/vkontakte/android/fragments/DialogsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x400199999999999aL    # 2.2

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setMaxWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "x":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$8;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$900(Lcom/vkontakte/android/fragments/DialogsFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
