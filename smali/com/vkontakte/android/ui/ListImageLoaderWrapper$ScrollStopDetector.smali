.class Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStopDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;)V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$0(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$1(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Landroid/widget/AbsListView;I)V

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$2(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)V

    .line 312
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$3(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method
