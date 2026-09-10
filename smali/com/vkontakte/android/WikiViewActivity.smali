.class public Lcom/vkontakte/android/WikiViewActivity;
.super Lcom/vkontakte/android/CustomTitleActivity;
.source "WikiViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;,
        Lcom/vkontakte/android/WikiViewActivity$WebCallback;,
        Lcom/vkontakte/android/WikiViewActivity$WebClient;
    }
.end annotation


# instance fields
.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private progress:Landroid/widget/ProgressBar;

.field private template:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vkontakte/android/CustomTitleActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/WikiViewActivity;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkontakte/android/WikiViewActivity;IIZ)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(IIZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkontakte/android/WikiViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/vkontakte/android/WikiViewActivity;->displayPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkontakte/android/WikiViewActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vkontakte/android/WikiViewActivity;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/vkontakte/android/WikiViewActivity;->pushHistory(IILjava/lang/String;)V

    return-void
.end method

.method private displayPage(Ljava/lang/String;)V
    .locals 6
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 181
    const-string v3, "vk"

    invoke-static {v3, p1}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v3, "src=\"/images/"

    const-string v4, "src=\"http://vk.com/images/"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 183
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->template:Ljava/lang/String;

    const-string v4, "{CONTENT}"

    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "wiki_temp.htm"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 187
    .local v1, "os":Ljava/io/FileOutputStream;
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 188
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 189
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 190
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->scrollTo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private loadNote(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "nid"    # I

    .prologue
    .line 164
    new-instance v0, Lcom/vkontakte/android/api/NotesGetById;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/NotesGetById;-><init>(II)V

    .line 165
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$6;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$6;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/NotesGetById;->setCallback(Lcom/vkontakte/android/api/NotesGetById$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 178
    return-void
.end method

.method private loadPage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$1;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 119
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(ILjava/lang/String;)V

    .line 86
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$2;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$2;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "oid"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "pid"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(II)V

    .line 102
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$3;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/WikiViewActivity$3;-><init>(Lcom/vkontakte/android/WikiViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 117
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    goto :goto_0
.end method

.method private loadPage(IIZ)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "id"    # I
    .param p3, "useHistory"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(II)V

    .line 145
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/vkontakte/android/WikiViewActivity$5;-><init>(Lcom/vkontakte/android/WikiViewActivity;ZII)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 161
    return-void
.end method

.method private loadPage(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "useHistory"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 123
    new-instance v0, Lcom/vkontakte/android/api/PagesGetHTML;

    invoke-direct {v0, p1, p2}, Lcom/vkontakte/android/api/PagesGetHTML;-><init>(ILjava/lang/String;)V

    .line 124
    new-instance v1, Lcom/vkontakte/android/WikiViewActivity$4;

    invoke-direct {v1, p0, p3, p1}, Lcom/vkontakte/android/WikiViewActivity$4;-><init>(Lcom/vkontakte/android/WikiViewActivity;ZI)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/PagesGetHTML;->setCallback(Lcom/vkontakte/android/api/PagesGetHTML$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p0}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 140
    return-void
.end method

.method private pushHistory(IILjava/lang/String;)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;-><init>(Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;)V

    .line 224
    .local v0, "he":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iput p1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    .line 225
    iput p2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    .line 226
    iput-object p3, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 232
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onBackPressed()V

    .line 253
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    .line 237
    .local v0, "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 238
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onBackPressed()V

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/WikiViewActivity;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    check-cast v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;

    .line 243
    .restart local v0    # "e":Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;
    iget-object v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 244
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    iget v2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    invoke-direct {p0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(IIZ)V

    goto :goto_0

    .line 247
    :cond_2
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->pid:I

    if-nez v1, :cond_3

    .line 248
    iget v1, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->oid:I

    iget-object v2, v0, Lcom/vkontakte/android/WikiViewActivity$HistoryEntry;->title:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/vkontakte/android/WikiViewActivity;->loadPage(ILjava/lang/String;Z)V

    goto :goto_0

    .line 251
    :cond_3
    invoke-super {p0}, Lcom/vkontakte/android/CustomTitleActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x41c80000    # 25.0f

    .line 34
    invoke-super {p0, p1}, Lcom/vkontakte/android/CustomTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WikiViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    .line 39
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    sget v4, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 40
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 41
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/vkontakte/android/WikiViewActivity$WebClient;

    invoke-direct {v4, p0, v8}, Lcom/vkontakte/android/WikiViewActivity$WebClient;-><init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebClient;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/vkontakte/android/WikiViewActivity$WebCallback;

    invoke-direct {v4, p0, v8}, Lcom/vkontakte/android/WikiViewActivity$WebCallback;-><init>(Lcom/vkontakte/android/WikiViewActivity;Lcom/vkontakte/android/WikiViewActivity$WebCallback;)V

    const-string v5, "vk"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WikiViewActivity;->setContentView(Landroid/view/View;)V

    .line 45
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-direct {v3, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    .line 46
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020231

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 49
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v3}, Lcom/vkontakte/android/WikiViewActivity;->addViewAtRight(Landroid/view/View;)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "wiki_template.htm"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 54
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 55
    .local v0, "buf":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 56
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v3, p0, Lcom/vkontakte/android/WikiViewActivity;->template:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "buf":[B
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "nid"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "oid"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/vkontakte/android/WikiViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "nid"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/vkontakte/android/WikiViewActivity;->loadNote(II)V

    .line 64
    :goto_1
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/vkontakte/android/WikiViewActivity;->loadPage()V

    goto :goto_1

    .line 57
    :catch_0
    move-exception v3

    goto :goto_0
.end method
