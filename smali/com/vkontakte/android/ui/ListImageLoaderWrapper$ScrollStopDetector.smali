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
    .line 305
    iput-object p1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper;
    .param p2, "x1"    # Lcom/vkontakte/android/ui/ListImageLoaderWrapper$1;

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;-><init>(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v1, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$000(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;)Landroid/widget/AdapterView;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-static {v1, v0, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$500(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Landroid/widget/AbsListView;I)V

    .line 310
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-static {v0, v2}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$102(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Z)Z

    .line 311
    iget-object v0, p0, Lcom/vkontakte/android/ui/ListImageLoaderWrapper$ScrollStopDetector;->this$0:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->access$202(Lcom/vkontakte/android/ui/ListImageLoaderWrapper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 312
    return-void
.end method
