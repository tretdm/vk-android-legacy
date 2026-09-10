.class public abstract Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;
.super Ljava/lang/Object;
.source "OnImageTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$CheckConstants;
    }
.end annotation


# instance fields
.field private currentView:Landroid/view/View;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private mDoCheck:Z

.field private mIsInSelectionMode:Z

.field private onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mDoCheck:Z

    .line 21
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$1;-><init>(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 62
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)I
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->tapCurrentView(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->startSelectionMode(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private cancelSelectionMode()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mDoCheck:Z

    .line 96
    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    .line 97
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onSelectionModeCompleted()V

    .line 98
    return-void
.end method

.method private final onTouched(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    if-eq v2, p1, :cond_1

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    .line 120
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 122
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 123
    :cond_2
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->cancelSelectionMode()V

    .line 125
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    return v1
.end method

.method private startSelectionMode(Z)V
    .locals 1
    .param p1, "doCheck"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mDoCheck:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onSelectionModeStarted()V

    .line 91
    return-void
.end method

.method private tapCurrentView(Z)I
    .locals 3
    .param p1, "playSoundEffect"    # Z

    .prologue
    const/4 v1, -0x1

    .line 102
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onTap(Landroid/view/View;)I

    move-result v0

    .line 106
    .local v0, "result":I
    if-eqz p1, :cond_0

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->currentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 112
    .end local v0    # "result":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abstract getCurrentCellSize()I
.end method

.method public getIsInSelectionMode()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->mIsInSelectionMode:Z

    return v0
.end method

.method public abstract onIndexSelected(I)V
.end method

.method public abstract onSelectionModeCompleted()V
.end method

.method public abstract onSelectionModeStarted()V
.end method

.method public abstract onTap(Landroid/view/View;)I
.end method

.method public toOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$2;

    invoke-direct {v0, p0}, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener$2;-><init>(Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;)V

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/utils/OnImageTouchListener;->onTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method
