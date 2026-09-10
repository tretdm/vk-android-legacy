.class Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;
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
    name = "LocalSearchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/QuickSearchActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/QuickSearchActivity;Lcom/vkontakte/android/QuickSearchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/QuickSearchActivity;
    .param p2, "x1"    # Lcom/vkontakte/android/QuickSearchActivity$1;

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;-><init>(Lcom/vkontakte/android/QuickSearchActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1102(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 570
    iget-object v0, p0, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    iget-object v1, p0, Lcom/vkontakte/android/QuickSearchActivity$LocalSearchRunnable;->this$0:Lcom/vkontakte/android/QuickSearchActivity;

    invoke-static {v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$1400(Lcom/vkontakte/android/QuickSearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkontakte/android/QuickSearchActivity;->access$300(Lcom/vkontakte/android/QuickSearchActivity;Ljava/lang/String;)V

    .line 571
    return-void
.end method
