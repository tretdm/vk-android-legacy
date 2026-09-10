.class Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;
.super Ljava/lang/Object;
.source "QuickSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/QuickSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;)V
    .locals 0

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$5(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)V

    .line 521
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$SearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$6(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$7(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 522
    return-void
.end method
