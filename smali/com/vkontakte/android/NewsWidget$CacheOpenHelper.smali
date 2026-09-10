.class public Lcom/vkontakte/android/NewsWidget$CacheOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NewsWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CacheOpenHelper"
.end annotation


# instance fields
.field inited:Z

.field final synthetic this$0:Lcom/vkontakte/android/NewsWidget;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/NewsWidget;Landroid/content/Context;)V
    .locals 4
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 427
    iput-object p1, p0, Lcom/vkontakte/android/NewsWidget$CacheOpenHelper;->this$0:Lcom/vkontakte/android/NewsWidget;

    .line 428
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 425
    iput-boolean v3, p0, Lcom/vkontakte/android/NewsWidget$CacheOpenHelper;->inited:Z

    .line 429
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkontakte/android/NewsWidget$CacheOpenHelper;->inited:Z

    .line 434
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 439
    return-void
.end method
